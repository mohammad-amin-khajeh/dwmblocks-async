
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void update_bat() {
    FILE *status_file = fopen("/sys/class/power_supply/BAT0/status", "r");
    FILE *capacity_file = fopen("/sys/class/power_supply/BAT0/capacity", "r");
    char bat_status[20];
    int bat_capacity;

    if (status_file == NULL || capacity_file == NULL) {
        return;
    }

    fscanf(status_file, "%s", bat_status);
    fscanf(capacity_file, "%d", &bat_capacity);

    fclose(status_file);
    fclose(capacity_file);

    if (strcmp(bat_status, "Charging") == 0) {
        printf("󰂄 %d%%\n", bat_capacity);
    } else if (bat_capacity >= 90) {
        printf("󰁹 %d%%\n", bat_capacity);
    } else if (bat_capacity >= 80) {
        printf("󰂂 %d%%\n", bat_capacity);
    } else if (bat_capacity >= 70) {
        printf("󰂁 %d%%\n", bat_capacity);
    } else if (bat_capacity >= 60) {
        printf("󰂀 %d%%\n", bat_capacity);
    } else if (bat_capacity >= 50) {
        printf("󰁿 %d%%\n", bat_capacity);
    } else if (bat_capacity >= 40) {
        printf("󰁾 %d%%\n", bat_capacity);
    } else if (bat_capacity >= 30) {
        printf("󰁽 %d%%\n", bat_capacity);
    } else if (bat_capacity >= 20) {
        printf("󰁼 %d%%\n", bat_capacity);
    } else if (bat_capacity >= 10) {
        printf("󰁻 %d%%\n", bat_capacity);
    } else {
        printf("󰁺 %d%%\n", bat_capacity);
    }
}

int main() {
    update_bat();
    return 0;
}
