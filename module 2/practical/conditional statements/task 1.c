#include <stdio.h>

int main() {
    int number;
    int month_num;

    // --- Even/Odd Check using if-else ---
    printf("Enter an integer to check if it's even or odd: ");
    scanf("%d", &number);

    if (number % 2 == 0) {
        printf("%d is an even number.\n", number);
    } else {
        printf("%d is an odd number.\n", number);
    }

    printf("\n"); // Newline for spacing

    // --- Month Name Display using switch ---
    printf("Enter a month number (1-12): ");
    scanf("%d", &month_num);

    switch (month_num) {
        case 1:
            printf("Month name: January\n");
            break;
        case 2:
            printf("Month name: February\n");
            break;
        case 3:
            printf("Month name: March\n");
            break;
        case 4:
            printf("Month name: April\n");
            break;
        case 5:
            printf("Month name: May\n");
            break;
        case 6:
            printf("Month name: June\n");
            break;
        case 7:
            printf("Month name: July\n");
            break;
        case 8:
            printf("Month name: August\n");
            break;
        case 9:
            printf("Month name: September\n");
            break;
        case 10:
            printf("Month name: October\n");
            break;
        case 11:
            printf("Month name: November\n");
            break;
        case 12:
            printf("Month name: December\n");
            break;
        default:
            printf("Invalid month number entered. Please enter a number between 1 and 12.\n");
            break;
    }

    return 0;
}
