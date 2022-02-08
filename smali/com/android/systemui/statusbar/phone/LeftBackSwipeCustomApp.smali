.class public Lcom/android/systemui/statusbar/phone/LeftBackSwipeCustomApp;
.super Lcom/havoc/support/preferences/AppPicker;
.source "LeftBackSwipeCustomApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/havoc/support/preferences/AppPicker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 16
    iget-boolean p1, p0, Lcom/havoc/support/preferences/AppPicker;->mIsActivitiesList:Z

    if-nez p1, :cond_0

    .line 18
    iget-object p1, p0, Lcom/havoc/support/preferences/AppPicker;->applist:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 19
    iget-object p2, p0, Lcom/havoc/support/preferences/AppPicker;->applist:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    iget-object p3, p0, Lcom/havoc/support/preferences/AppPicker;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, p3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/LeftBackSwipeCustomApp;->setPackage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LeftBackSwipeCustomApp;->setPackageActivity(Landroid/content/pm/ActivityInfo;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 24
    iget-object p1, p0, Lcom/havoc/support/preferences/AppPicker;->mActivitiesList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LeftBackSwipeCustomApp;->setPackageActivity(Landroid/content/pm/ActivityInfo;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/havoc/support/preferences/AppPicker;->mIsActivitiesList:Z

    .line 28
    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    return-void
.end method

.method protected onLongClick(I)V
    .locals 2

    .line 33
    iget-boolean v0, p0, Lcom/havoc/support/preferences/AppPicker;->mIsActivitiesList:Z

    if-eqz v0, :cond_0

    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/havoc/support/preferences/AppPicker;->applist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lcom/havoc/support/preferences/AppPicker;->applist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/havoc/support/preferences/AppPicker;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 38
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/LeftBackSwipeCustomApp;->setPackage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LeftBackSwipeCustomApp;->setPackageActivity(Landroid/content/pm/ActivityInfo;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/havoc/support/preferences/AppPicker;->showActivitiesDialog(Ljava/lang/String;)V

    return-void
.end method

.method protected setPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 44
    invoke-virtual {p0}, Landroid/app/ListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "left_long_back_swipe_app_action"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 47
    invoke-virtual {p0}, Landroid/app/ListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "left_long_back_swipe_app_fr_action"

    invoke-static {p0, p1, p2, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method protected setPackageActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 2

    .line 54
    invoke-virtual {p0}, Landroid/app/ListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "NONE"

    :goto_0
    const/4 v0, -0x2

    const-string v1, "left_long_back_swipe_app_activity_action"

    .line 53
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method
