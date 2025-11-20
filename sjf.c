#include <stdio.h>

int main() {
    int n, bt[20], p[20], wt[20], tat[20];
    float awt = 0, atat = 0;

    printf("Enter number of processes: ");
    scanf("%d", &n);

    printf("Enter burst times of %d processes:\n", n);
    for (int i = 0; i < n; i++) {
        printf("P%d: ", i + 1);
        scanf("%d", &bt[i]);
        p[i] = i + 1;
    }

    
    for (int i = 0; i < n; i++) {
        for (int j = i + 1; j < n; j++) {
            if (bt[j] < bt[i]) {
                int temp;

                temp = bt[i];
                bt[i] = bt[j];
                bt[j] = temp;

                temp = p[i];
                p[i] = p[j];
                p[j] = temp;
            }
        }
    }

    
    wt[0] = 0;
    for (int i = 1; i < n; i++) {
        wt[i] = wt[i - 1] + bt[i - 1];
    }


    for (int i = 0; i < n; i++) {
        tat[i] = wt[i] + bt[i];
        awt += wt[i];
        atat += tat[i];
    }


    printf("\n--------------------------------------------\n");
    printf("Process\t  Burst\t  Waiting\tTurnaround\n");
    printf("--------------------------------------------\n");

    for (int i = 0; i < n; i++) {
        printf("P%-7d %-7d %-10d %-10d\n",
               p[i], bt[i], wt[i], tat[i]);
    }

    printf("--------------------------------------------\n");

    printf("\nAverage Waiting Time     = %.2f\n", awt / n);
    printf("Average Turnaround Time  = %.2f\n", atat / n);

    return 0;
}
