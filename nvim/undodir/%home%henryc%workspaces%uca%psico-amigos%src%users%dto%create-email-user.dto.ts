Vim�UnDo� ���e�M���z]|#ʼM]l$�1k�zCN      Cimport { IsNotEmpty, IsOptional, IsString } from 'class-validator';                             b�*�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             b�*/     �                   �               5��                                                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b�*/     �                  5��                                                  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             b�*2     �               export class QueryUserDto {5��                     
   u              
       �                     	   {              	       �                        �                     �                        �                     �                        �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             b�*<     �                   name: 'q',5��                        �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             b�*E     �                   name: 'body',5��                        �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             b�*I     �                   required: false,5��                         �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             b�*J     �                    required: ,5��                          �                      5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             b�*K     �                   �             5��                          �                      �                         �                      �                        �                     �                        �                     �                        �                     5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             b�*N     �                   example5��                        �                     �                        �                     5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             b�*Q     �                   example: 'Hello,'5��                         �                      5�_�   
                    1    ����                                                                                                                                                                                                                                                                                                                                                             b�*\     �               1    example: 'Hello, Iam a boy with 15 years old'5��       1                  �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                               0                 v       b�*^    �      	         3    description: 'The pattern for search the user',5��                        �                     �                     
   �              
       5�_�                           ����                                                                                                                                                                                                                                                                                                                               0                 v       b�*e     �   
               @IsOptional()5��    
                                           5�_�                    	       ����                                                                                                                                                                                                                                                                                                                               0                 v       b�*e     �   	              �   	          5��    	                                           �    	                                          �    	                                        �    	                 
                
       �    	          
       
         
       
       5�_�                    
       ����                                                                                                                                                                                                                                                                                                                               0                 v       b�*h    �   	              @IsNotEmpty�               7import { IsOptional, IsString } from 'class-validator';5��    	          
                 
               �       	                  8                      �    	                                           �    	                     +                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b�*k    �                 q?: string;5��                        =                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b�*n     �                 �             5��                          ;                     �                         =                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b�*p    �                  @5��                          ;                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       b�*�    �               Cimport { IsNotEmpty, IsOptional, IsString } from 'class-validator';5��                         C                      5��