//
//  main.c
//  Coolness
//
//  Created by Michael Nwani on 8/29/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <readline/readline.h>
#import <stdio.h>

int main(int argc, const char * argv[])
{

    printf("Who is cool? ");
    const char* name = readline(NULL);
    printf("%s is cool!\n\n", name);



    

    return 0;
}

