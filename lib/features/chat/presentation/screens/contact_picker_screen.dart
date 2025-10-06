import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gaia/features/chat/domain/type/chat_role.dart';
import 'package:gaia/features/chat/presentation/providers/contact_controller.dart';
import 'package:gaia/features/chat/presentation/widgets/contact_list_item.dart';
import 'package:gaia/features/chat/presentation/widgets/contact_tab_bar.dart';
import 'package:gaia/shared/widgets/custom_app_bar_widget.dart';

class ContactPickerScreen extends HookConsumerWidget {
  const ContactPickerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contactAsync = ref.watch(contactControllerProvider);
    final controller = ref.read(contactControllerProvider.notifier);
    final selectedRole = useState<ChatRole>(ChatRole.student);

    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: "Pilih Kontak",
        leadingIcon: true,
      ),
      body: Column(
        children: [
          ContactTabBar(
            selectedRole: selectedRole.value,
            onRoleChanged: (role) {
              selectedRole.value = role;
            },
          ),
          Expanded(
            child: contactAsync.when(
              data: (pagedContacts) {
                final filteredContacts = pagedContacts.items
                    .where((contact) => contact.role == selectedRole.value)
                    .toList();

                if (filteredContacts.isEmpty) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return RefreshIndicator(
                  onRefresh: () async => controller.refresh(),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: ListView.separated(
                      itemCount: filteredContacts.length,
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: Colors.grey[300],
                          thickness: 1,
                          height: 1,
                        );
                      },
                      itemBuilder: (context, index) {
                        final contact = filteredContacts[index];
                        return ContactListItem(
                          contact: contact,
                          onTap: () {
                            // TODO: Navigate to chat detail with selected contact
                            Navigator.pop(context);
                          },
                        );
                      },
                    ),
                  ),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Error: $error'),
                    ElevatedButton(
                      onPressed: () => ref.refresh(contactControllerProvider),
                      child: const Text('Coba Lagi'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}