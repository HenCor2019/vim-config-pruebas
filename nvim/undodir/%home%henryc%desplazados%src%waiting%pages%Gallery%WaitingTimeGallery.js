Vim�UnDo� �7qKKg�������KW�(��P1�{%   �         <Footer />   j         
       
   
   
    b�e�    _�                     4        ����                                                                                                                                                                                                                                                                                                                                                             b�e�     �   4   6   �          �   4   6   �    5��    4                      Z	                     �    4                  	   Z	             	       5�_�                    5   	    ����                                                                                                                                                                                                                                                                                                                                                             b�e�     �   4   6   �      	    <div>5��    4   	                  c	                     5�_�                    5   	    ����                                                                                                                                                                                                                                                                                                                                                             b�e�     �   4   7   �          <div></div>5��    4   	                 c	                     5�_�                    7        ����                                                                                                                                                                                                                                                                                                                            7          i          V       b�e�     �   6   7       3   M    <div className="sm:flex sm:justify-center sm:items-center h-full w-full">         {!isMobile           && isActive           && (           <Modal>             <Lightbox   !            current={activeImage}   #            onClick={handleOnClick}   !            images={galleryImage}             />           </Modal>   
        )}   i      <main className="flex flex-col justify-center items-center xl:justify-start xl:items-start w-full">   �        <div className="flex justify-center items-center py-6 px-6 sm:px-0 xl:p-0 xl:justify-start xl:items-start md:w-11/12 lg:w-8/12">             <img   :            className="w-full sm:w-3/4 md:w-3/5 lg:w-1/2 "   A            src={i18next.language === 'en' ? Title_en : Title_es}   B            alt="La cotidianidad: la casa de espera y el albergue"             />           </div>   9        <div className="flex justify-center items-start">   �          <div className="grid grid-cols-1 w-full md:w-8/12 grid-flow-row sm:grid-cols-2 lg:grid-cols-4 background-waitingTimeGallery bg-no-repeat bg-center bg-cover lg:gap-6 lg:p-6 lg:pr-10 m-2 xl-2:m-8">   1            {galleryImage.map((galleryImage) => (   7              <React.Fragment key={galleryImage.index}>                   <Image   $                  img={galleryImage}   *                  alt={galleryImage.title}   5                  position={galleryImage.imgPosition}   )                  onClick={handleOnClick}   %                  isMobile={isMobile}                   />                   {isTablet                     || (isMobile                       && (                       <Text   0                      title={galleryImage.title}   <                      description={galleryImage.description}   2                      author={galleryImage.author}                       />                       ))}                 </React.Fragment>               ))}              <div className="bg-time sm:bg-transparent lg:bg-white p-4 sm:px-10 md:px-5 lg:p-2 order-last sm:order-4 sm:col-start-1 sm:col-end-3 lg:col-start-3 lg:col-end-5 lg:row-start-3 lg:row-end-4 lg:border xl:border-2 xl-2:border-3 xl:border-gray-gallery border-solid">   h              <p className="text-justify text-white sm:text-black font-acumin text-custom-gallery-size">                   {t('message')}                 </p>               </div>             </div>           </div>         </main>   
    </div>5��    6       3               o	      �              5�_�                    5       ����                                                                                                                                                                                                                                                                                                                            7          7          V       b�e�     �   5   i   �    �   5   6   �    5��    5               3       d	              �      5�_�                    6        ����                                                                                                                                                                                                                                                                                                                            6          h          V       b�e�     �   5   i   �   3   M    <div className="sm:flex sm:justify-center sm:items-center h-full w-full">         {!isMobile           && isActive           && (           <Modal>             <Lightbox   !            current={activeImage}   #            onClick={handleOnClick}   !            images={galleryImage}             />           </Modal>   
        )}   i      <main className="flex flex-col justify-center items-center xl:justify-start xl:items-start w-full">   �        <div className="flex justify-center items-center py-6 px-6 sm:px-0 xl:p-0 xl:justify-start xl:items-start md:w-11/12 lg:w-8/12">             <img   :            className="w-full sm:w-3/4 md:w-3/5 lg:w-1/2 "   A            src={i18next.language === 'en' ? Title_en : Title_es}   B            alt="La cotidianidad: la casa de espera y el albergue"             />           </div>   9        <div className="flex justify-center items-start">   �          <div className="grid grid-cols-1 w-full md:w-8/12 grid-flow-row sm:grid-cols-2 lg:grid-cols-4 background-waitingTimeGallery bg-no-repeat bg-center bg-cover lg:gap-6 lg:p-6 lg:pr-10 m-2 xl-2:m-8">   1            {galleryImage.map((galleryImage) => (   7              <React.Fragment key={galleryImage.index}>                   <Image   $                  img={galleryImage}   *                  alt={galleryImage.title}   5                  position={galleryImage.imgPosition}   )                  onClick={handleOnClick}   %                  isMobile={isMobile}                   />                   {isTablet                     || (isMobile                       && (                       <Text   0                      title={galleryImage.title}   <                      description={galleryImage.description}   2                      author={galleryImage.author}                       />                       ))}                 </React.Fragment>               ))}              <div className="bg-time sm:bg-transparent lg:bg-white p-4 sm:px-10 md:px-5 lg:p-2 order-last sm:order-4 sm:col-start-1 sm:col-end-3 lg:col-start-3 lg:col-end-5 lg:row-start-3 lg:row-end-4 lg:border xl:border-2 xl-2:border-3 xl:border-gray-gallery border-solid">   h              <p className="text-justify text-white sm:text-black font-acumin text-custom-gallery-size">                   {t('message')}                 </p>               </div>             </div>           </div>         </main>   
    </div>5��    5                     d	                    �    6                     �	                    �    7                  
   �	             
       �    8                  
   �	             
       �    9                  
   �	             
       �    :           
          �	      
              �    ;                     
                    �    <                     8
                    �    =                     ^
                    �    >           
          �
      
              �    ?                  
   �
             
       �    @                  
   �
             
       �    A                     �
                    �    B                  
                
       �    C           
          �      
              �    D                     �                    �    E                     �                    �    F                     :                    �    G           
                
              �    H                  
   �             
       �    I                  
   �             
       �    J           
          �      
              �    K                     �                    �    L                     �                    �    M                                         �    N                     2                    �    O                     Y                    �    P                     �                    �    Q                     �                    �    R                     �                    �    S                                         �    T                     '                    �    U                     C                    �    V                     d                    �    W                                         �    X                     �                    �    Y                     �                    �    Z                                         �    [                     B                    �    \                     [                    �    ]                     u                    �    ^                     �                    �    _                     �                    �    `                     �                    �    a                     (                    �    b                     I                    �    c                     ^                    �    d           
          s      
              �    e                  
   �             
       �    f                     �                    �    g                     �                    5�_�                    h       ����                                                                                                                                                                                                                                                                                                                            6          h          V       b�e�     �   h   j   �              �   h   j   �    5��    h                      �                     �    h                     �                    �    h                    �                    �    h   
                 �                    �    h                    �                    5�_�      	              i       ����                                                                                                                                                                                                                                                                                                                            6          h          V       b�e�     �   #   &   �       �   h   j   �            <Footer5��    h                    �                    �    h                    �                    �    #                      �              -       �    i                     �                     5�_�      
           	   j       ����                                                                                                                                                                                                                                                                                                                            7          i          V       b�e�     �   i   k   �            <Footer />5��    i                     �                     �    i                    �                    5�_�   	               
   j       ����                                                                                                                                                                                                                                                                                                                            7          i          V       b�e�    �   i   k   �      !      <Footer translateButtons />5��    i                    �                    �    i                    �                    5��