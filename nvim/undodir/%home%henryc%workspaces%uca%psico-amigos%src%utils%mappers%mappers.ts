Vim�UnDo� ;�D��9z4���U�	��M�QH��s����<                                        b��
    _�                             ����                                                                                                                                                                                                                                                                                                                                                             b���     �                   5��                                                  �                                              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b���     �                  export function =5��                                              �                                              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b���     �                  export const mapByCategories =5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b���     �                  export const mapByCategories = �               5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                         &       v   &    b���     �             �                  'export const mapByCategories = function�               5��                                                �                                         �      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v   &    b���     �                export const mapByCategories = 5��                                                �                                                  5�_�                          ����                                                                                                                                                                                                                                                                                                                                                v       b��     �                   return tips   9      .map((tip) => ({ ...tip, title: tip.description }))         .reduce((acc, tip) => {   ,        const { categories, ...rest } = tip;   *        categories.forEach((category) => {   #          if (acc[category.name]) {   ?            acc[category.name] = [...acc[category.name], rest];             } else {   (            acc[category.name] = [rest];             }           });               return { ...acc };         }, {});5��                        &       �              5�_�                             ����                                                                                                                                                                                                                                                                                                                                                v       b��	    �                   5��                          "                      5�_�                      !    ����                                                                                                                                                                                                                                                                                                                               
                 v       b���     �                $export const mapByCategories = () =>5��        !                  !                      5�_�      	                     ����                                                                                                                                                                                                                                                                                                                               
                 v       b��      �                   tips5��                         )                      5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                               
                 v       b��     �                ,export const mapByCategories = (elements) =>5��                                                  5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                               
                 v       b��     �                   elements5��                        1                     5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                v       b��    �                
  elements   7    .map((tip) => ({ ...tip, title: tip.description }))       .reduce((acc, tip) => {   *      const { categories, ...rest } = tip;   (      categories.forEach((category) => {   !        if (acc[category.name]) {   =          acc[category.name] = [...acc[category.name], rest];           } else {   &          acc[category.name] = [rest];   	        }   	      });             return { ...acc };       }, {});5��                       /       �      �      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       b��)     �               C    .map((element) => ({ ...element, title: element.description }))5��       $                 \                     �                        P                     �       
                 B                     5�_�                       (    ����                                                                                                                                                                                                                                                                                                                                                v       b��/     �                1export const mapByCategories = (elements: Tip) =>5��        (                  (                      �        *                 *                     5�_�                       -    ����                                                                                                                                                                                                                                                                                                                                                v       b��2     �                =export const mapByCategories = (elements: Tip | Testimony) =>5��        *                 *                     �        *                 *                     �        0                 0                     �        0                 0                     �        0              	   0              	       5�_�                       9    ����                                                                                                                                                                                                                                                                                                                                                v       b��<     �                Dexport const mapByCategories = (elements: Tip | Testimony | User) =>5��        0       	          0       	              �        0                 0                     �        <                 <                     �        <                 <                     �        <                 <                     5�_�                       @    ����                                                                                                                                                                                                                                                                                                                                                v       b��A     �                $import { User } from "src/entities";       Aexport const mapByCategories = (elements: Tip | Testimony | U) =>�               Dexport const mapByCategories = (elements: Tip | Testimony | User) =>5��        <                 <                     �                                           &       �       <                 b                     5�_�                       9    ����                                                                                                                                                                                                                                                                                                                                                v       b��D     �               Dexport const mapByCategories = (elements: Tip | Testimony | User) =>5��       8                  ^                      �       7                  ]                      �       6                  \                      �       5                  [                      �       4                  Z                      �       3                  Y                      �       2                  X                      �       1                  W                      �       0              	   V              	       5�_�                       9    ����                                                                                                                                                                                                                                                                                                                                                v       b��D     �               Dexport const mapByCategories = (elements: Tip | Testimony | User) =>�                /import { Testimony, User } from "src/entities";5��       0       	       	   V       	       	       �       0       	       	   V       	       	       �        	                  	                      5�_�                       -    ����                                                                                                                                                                                                                                                                                                                                                v       b��H     �               Dexport const mapByCategories = (elements: Tip | Testimony | User) =>5��       ,                  ]                      �       +                  \                      �       *                 [                     5�_�                       -    ����                                                                                                                                                                                                                                                                                                                                                v       b��H     �               Dexport const mapByCategories = (elements: Tip | Testimony | User) =>�                4import { Testimony, Tip, User } from "src/entities";5��       *                 [                     �       *                 [                     �                                                5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                               )          &       v   &    b��I    �                4import { Testimony, Tip, User } from 'src/entities';5��        %                 %                     5�_�                       &    ����                                                                                                                                                                                                                                                                                                                               )          &       v   &    b��J     �                1import { Testimony, Tip, User } from '@entities';5��        &                 &                     5�_�                       -    ����                                                                                                                                                                                                                                                                                                                               )          &       v   &    b��Q     �               Fexport const mapByCategories = (elements: Tip[] | Testimony | User) =>5��       -                  `                      5�_�                       ;    ����                                                                                                                                                                                                                                                                                                                               )          &       v   &    b��T     �               Hexport const mapByCategories = (elements: Tip[] | Testimony[] | User) =>5��       ;                  n                      5�_�                       D    ����                                                                                                                                                                                                                                                                                                                               	          	       v   	    b��X     �               Jexport const mapByCategories = (elements: Tip[] | Testimony[] | User[]) =>5��       D                  w                      5�_�                           ����                                                                                                                                                                                                                                                                                                                               	          	       v   	    b��y     �               T    .map((element: Tip | Testimony) => ({ ...element, title: element.description }))5��                         �                      �                     	   �              	       �                     	   �              	       5�_�                       "    ����                                                                                                                                                                                                                                                                                                                               	          	       v   	    b��~     �               \    .map((element: Tip | Testimony | User ) => ({ ...element, title: element.description }))5��              	          �       	              �                        �                     5�_�                       *    ����                                                                                                                                                                                                                                                                                                                               	          	       v   	    b��    �               0    .map((element: Tip | Testimony | User) => ({         ...element,   !      title: element.description,       }))5��       )       3         �       3       C       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       b��    �              5��                          �       "               5��