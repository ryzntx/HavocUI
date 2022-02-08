.class public Lcom/android/systemui/statusbar/phone/RightBackSwipeCustomApp;
.super Lcom/android/systemui/statusbar/phone/LeftBackSwipeCustomApp;
.source "RightBackSwipeCustomApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LeftBackSwipeCustomApp;-><init>()V

    return-void
.end method


# virtual methods
.method protected setPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 11
    invoke-virtual {p0}, Landroid/app/ListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "right_long_back_swipe_app_action"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 14
    invoke-virtual {p0}, Landroid/app/ListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "right_long_back_swipe_app_fr_action"

    invoke-static {p0, p1, p2, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method protected setPackageActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 2

    .line 22
    invoke-virtual {p0}, Landroid/app/ListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 23
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "NONE"

    :goto_0
    const/4 v0, -0x2

    const-string v1, "right_long_back_swipe_app_activity_action"

    .line 21
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method
