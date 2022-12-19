Vim�UnDo� �1]��D�&Qy�.��Z��m��)����E   J                 	       	   	   	    b�J�    _�                     3       ����                                                                                                                                                                                                                                                                                                                            3          3          V       b�Jf     �   2   4   J      V    return tipsServices.createTips(auth?.tokens?.accessToken, description, categories)5��    2                    b                    5�_�                    3       ����                                                                                                                                                                                                                                                                                                                            3          3          V       b�Jj     �   2   4   J    5��    2                      ^                     �    2                      ^                     5�_�                    3        ����                                                                                                                                                                                                                                                                                                                            4          4          V       b�Jk     �   2   3           5��    2                      ^                     5�_�                    3       ����                                                                                                                                                                                                                                                                                                                            3          3          V       b�Jk     �   3   5   K          �   3   5   J    5��    3                      �                     �    3                     �                     5�_�                    4       ����                                                                                                                                                                                                                                                                                                                            3          3          V       b�Jo     �   3   5   K          if (response.)5��    3                     �                     �    3                    �                    5�_�                    4       ����                                                                                                                                                                                                                                                                                                                            3          3          V       b�Jr     �   3   5   K          if (response.success)5��    3                     �                     5�_�                    4       ����                                                                                                                                                                                                                                                                                                                            3          3          V       b�Jt     �   3   6   K          if (response?.success)5��    3                     �                     �    3                    �                    �    3                    �                     5�_�      	              4       ����                                                                                                                                                                                                                                                                                                                            3          3          V       b�Jw    �   3   5   L          if (response?.success){5��    3                     �                     5�_�                  	   3        ����                                                                                                                                                                                                                                                                                                                            3          3          V       b�J�     �               L   ?import { tipsServices, testimonialsServices } from '@services/'   +import { useEffect, useState } from 'react'   Eimport { useProvideAuth } from '@hooks/useProvideAuth/useProvideAuth'       export function useTips() {   &  const [tips, setTips] = useState([])   2  const [categories, setCategories] = useState([])   *  const [errors, setErrors] = useState([])         const auth = useProvideAuth()     useEffect(() => {   /    tipsServices.findAll().then((response) => {         if (!response.success) {   *        setErrors(response.messages || [])           return         }       /      setTips(Object.entries(response.content))       })       findCategories()     }, [])       &  const findCategories = async () => {   @    const response = await testimonialsServices.findCategories()           if (!response.success) {   "      setErrors(response.messages)         return       }           const mappedCategories =   -      response?.content?.map((category) => ({            id: category.categoryId,           label: category.name,           value: category.name,           isSelected: false         })) ?? []   #    setCategories(mappedCategories)       return mappedCategories     }       !  const resetCategories = () => {   U    setCategories(categories.map((category) => ({ ...category, isSelected: false })))     }       -  const deleteOne = async (token, tipId) => {   .    await tipsServices.deleteOne(token, tipId)     }       9  const createTips = async (description, categories) => {   ^    const response tipsServices.createTips(auth?.tokens?.accessToken, description, categories)       if (!response?.success){       }     }       ;  const updateSelectedCategory = (isChecked, category) => {       const { id } = category       setCategories((prev) => {   1      if (!prev.find((item) => item.id === id)) {           return prev         }       d      return prev.map((item) => (item.id === id ? { ...item, isSelected: isChecked } : { ...item }))       })     }       
  return {   	    tips,       errors,       categories,       updateSelectedCategory,       resetCategories,       deleteOne,       createTips     }   }5�5��