.class public Lcom/google/android/systemui/smartspace/SmartSpaceData;
.super Ljava/lang/Object;
.source "SmartSpaceData.java"


# instance fields
.field mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

.field mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    .line 47
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    return-void
.end method

.method public getCurrentCard()Lcom/google/android/systemui/smartspace/SmartSpaceCard;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    return-object p0
.end method

.method public getExpirationRemainingMillis()J
    .locals 6

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 20
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasCurrent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasWeather()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v2}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v2

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasCurrent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v2

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasWeather()Z

    move-result v2

    if-nez v2, :cond_2

    const-wide/16 v0, 0x0

    return-wide v0

    .line 27
    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v2

    :goto_0
    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public getExpiresAtMillis()J
    .locals 4

    .line 33
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasCurrent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasWeather()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasCurrent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v0

    return-wide v0

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasWeather()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWeatherCard()Lcom/google/android/systemui/smartspace/SmartSpaceCard;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    return-object p0
.end method

.method public handleExpire()Z
    .locals 6

    .line 53
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasWeather()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "SmartspaceData"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "weather expired "

    .line 58
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v4}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    iput-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 65
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasCurrent()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v4}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isExpired()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 68
    :cond_3
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current expired "

    .line 70
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v4}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_4
    iput-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    return v1

    :cond_5
    :goto_2
    return v0
.end method

.method public hasCurrent()Z
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasWeather()Z
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
