// /**
//  * @filename: test1.c
//  * @brief: 读取文件/proc/net/arp 以获取ip对应的mac地址
//  */

// #include <stdio.h>
// #include <stdlib.h>
// #include <stdbool.h>
// #include <string.h>
// #define DEBUG_FLAG
// #define MAX_TABLE_SIZE 128
// #define MAX_KEY_LENGTH 18
// #define MAX_VALUE_LENGTH 18

// typedef struct pair{
//     char key[MAX_KEY_LENGTH];
//     char value[MAX_KEY_LENGTH];
// }Pair, ARPItem;

// typedef struct a_table{
//     ARPItem arp_items[MAX_TABLE_SIZE];
//     size_t size;
// }ARPTable;

// void init_table(struct a_table* table){
//     memset(table, 0, sizeof(struct a_table));
// }

// int insert_into_table(struct a_table* table, char* key, char* value){
//     if(table == NULL || key == NULL){
//         printf("insert error: table or key is null\n");
//         return -1;
//     }else if(table->size >= MAX_TABLE_SIZE){
//         printf("insert error: table is full\n");
//         return -2;
//     }else{
//         size_t key_length = strlen(key);
//         size_t value_length = strlen(value);
//         if(key_length >= MAX_KEY_LENGTH || value_length >= MAX_VALUE_LENGTH){
//             printf("insert error: key or value str is too long...(%ld, %ld)\n", key_length, value_length);
//             return -3;
//         } 
//         memcpy(table->arp_items[table->size].key, key, key_length);
//         memcpy(table->arp_items[table->size].value, value, value_length);
//         return ++table->size;
//     }
// }

// int find_in_table(struct a_table* table, char* key){
//     if(table == NULL || key == NULL){
//         printf("find error: table or key is null\n");
//         return -2;
//     }else if(table->size == 0){
//         printf("find error: table empty\n");
//         return -3;
//     }else{
//         for(int i = 0; i < table->size; ++i){
//             if(strcmp(key, table->arp_items->key) == 0){
//                 return i;
//             }
//         }
//         return -1;
//     }
// }

// int show_table(struct a_table* table){
//     puts("==================================================================");
//     for(int i = 0; i < table->size; ++i){
//         printf("%d) %s -> %s\n", i, table->arp_items[i].key, table->arp_items[i].value);
//     }
//     puts("==================================================================");
// }

// int get_arp_table(ARPTable* arp_table){
//     FILE* fd = fopen("/proc/net/arp", "r");
//     if(fd <= 0){
//         fprintf(stderr, "open arp table failed\n");
//         return -1;
//     }else{
//         char temp_ip[MAX_KEY_LENGTH] = {0};
//         char temp_mac[MAX_VALUE_LENGTH] = {0};
//         // skip the first line
//         while(!feof(fd) && fgetc(fd) != '\n');
//         // init table
//         // read mac and ip to arp_table
//         while (!feof(fd) && (fscanf(fd, " %15[0-9.] %*s %*s %17[A-Fa-f0-9:] %*s %*s", temp_ip, temp_mac) == 2)){
//             insert_into_table(arp_table, temp_ip, temp_mac);
//             memset(temp_ip, 0, MAX_KEY_LENGTH);
//             memset(temp_mac, 0, MAX_VALUE_LENGTH);
//         }
// #ifdef DEBUG_FLAG
//         show_table(arp_table);
// #endif
//         return arp_table->size;
//     }
// }

// int main(void){
//     ARPTable arp_table;
//     init_table(&arp_table);  
//     get_arp_table(&arp_table);
//     return 0;
// }