.class public Lcom/android/settingslib/fuelgauge/BatteryStatus;
.super Ljava/lang/Object;
.source "BatteryStatus.java"


# instance fields
.field public final health:I

.field public final level:I

.field public final maxChargingCurrent:I

.field public final maxChargingVoltage:I

.field public final maxChargingWattage:I

.field public final oemFastChargeStatus:Z

.field public final plugged:I

.field public final present:Z

.field public final status:I

.field public final temperature:F


# direct methods
.method public constructor <init>(IIIIIIIFZZ)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    .line 66
    iput p2, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    .line 67
    iput p3, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    .line 68
    iput p4, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->health:I

    .line 69
    iput p5, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingCurrent:I

    .line 70
    iput p6, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingVoltage:I

    .line 71
    iput p7, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    .line 72
    iput-boolean p10, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->present:Z

    .line 73
    iput p8, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->temperature:F

    .line 74
    iput-boolean p9, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->oemFastChargeStatus:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "status"

    const/4 v1, 0x1

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    const-string v0, "plugged"

    const/4 v2, 0x0

    .line 79
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    const-string v0, "level"

    .line 80
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    const-string v0, "health"

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->health:I

    const-string v0, "present"

    .line 82
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->present:Z

    const-string v0, "max_charging_current"

    const/4 v1, -0x1

    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingCurrent:I

    const-string v0, "max_charging_voltage"

    .line 84
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingVoltage:I

    const-string v0, "temperature"

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->temperature:F

    .line 87
    iget v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingCurrent:I

    .line 88
    iget v3, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingVoltage:I

    if-gtz v3, :cond_0

    const v3, 0x4c4b40

    :cond_0
    if-lez v0, :cond_1

    .line 96
    div-int/lit16 v0, v0, 0x3e8

    div-int/lit16 v3, v3, 0x3e8

    mul-int/2addr v0, v3

    iput v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    goto :goto_0

    .line 99
    :cond_1
    iput v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    :goto_0
    const-string v0, "oem_fast_charger"

    .line 101
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->oemFastChargeStatus:Z

    return-void
.end method


# virtual methods
.method public final getChargingSpeed(Landroid/content/Context;)I
    .locals 3

    .line 160
    iget-boolean v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->oemFastChargeStatus:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    return v1

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settingslib/R$integer;->config_chargingSlowlyThreshold:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/settingslib/R$integer;->config_chargingFastThreshold:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 167
    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    if-gtz p0, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    if-ge p0, v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-le p0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public isCharged()Z
    .locals 2

    .line 133
    iget v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isOverheated()Z
    .locals 1

    .line 151
    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->health:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPluggedIn()Z
    .locals 2

    .line 110
    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isPluggedInWired()Z
    .locals 2

    .line 121
    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryStatus{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",plugged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",health="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->health:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",maxChargingWattage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
