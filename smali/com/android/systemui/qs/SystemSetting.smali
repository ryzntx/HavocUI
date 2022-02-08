.class public abstract Lcom/android/systemui/qs/SystemSetting;
.super Landroid/database/ContentObserver;
.source "SystemSetting.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mObservedValue:I

.field private final mSettingName:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p2, 0x0

    .line 36
    iput p2, p0, Lcom/android/systemui/qs/SystemSetting;->mObservedValue:I

    .line 42
    iput-object p1, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/android/systemui/qs/SystemSetting;->mSettingName:Ljava/lang/String;

    .line 44
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/SystemSetting;->mUserId:I

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SystemSetting;->mSettingName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/qs/SystemSetting;->mUserId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method protected abstract handleValueChanged(IZ)V
.end method

.method public onChange(Z)V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result p1

    .line 72
    iget v0, p0, Lcom/android/systemui/qs/SystemSetting;->mObservedValue:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/SystemSetting;->handleValueChanged(IZ)V

    .line 73
    iput p1, p0, Lcom/android/systemui/qs/SystemSetting;->mObservedValue:I

    return-void
.end method

.method public setValue(I)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/SystemSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SystemSetting;->mSettingName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/qs/SystemSetting;->mUserId:I

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
