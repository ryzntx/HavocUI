.class public enum Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;
.super Ljava/lang/Enum;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/navigation/halo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4029
    name = "BatteryMeterMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

.field public static final BATTERY_METER_CIRCLE:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

.field public static final BATTERY_METER_GONE:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

.field public static final BATTERY_METER_ICON_FAYAH:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

.field public static final BATTERY_METER_ICON_LANDSCAPE:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

.field public static final BATTERY_METER_ICON_PORTRAIT:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

.field public static final BATTERY_METER_TEXT:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;


# direct methods
.method static final constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    const-string v1, "BATTERY_METER_GONE"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_GONE:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    new-instance v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    const-string v1, "BATTERY_METER_ICON_PORTRAIT"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_ICON_PORTRAIT:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    new-instance v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    const-string v1, "BATTERY_METER_ICON_LANDSCAPE"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_ICON_LANDSCAPE:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    new-instance v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    const-string v1, "BATTERY_METER_CIRCLE"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_CIRCLE:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    new-instance v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    const-string v1, "BATTERY_METER_TEXT"

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_TEXT:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    new-instance v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    const-string v1, "BATTERY_METER_ICON_FAYAH"

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_ICON_FAYAH:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    sget-object v1, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_GONE:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_ICON_PORTRAIT:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_ICON_LANDSCAPE:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_CIRCLE:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_TEXT:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->BATTERY_METER_ICON_FAYAH:Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->$VALUES:[Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;
    .locals 4

    sget-object v1, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->$VALUES:[Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final values()[Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->$VALUES:[Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/navigation/halo$BatteryMeterMode;

    return-object v0
.end method
