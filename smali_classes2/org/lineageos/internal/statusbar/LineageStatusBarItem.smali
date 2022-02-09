.class public Lorg/lineageos/internal/statusbar/LineageStatusBarItem;
.super Ljava/lang/Object;
.source "LineageStatusBarItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lineageos/internal/statusbar/LineageStatusBarItem$DarkReceiver;,
        Lorg/lineageos/internal/statusbar/LineageStatusBarItem$Manager;,
        Lorg/lineageos/internal/statusbar/LineageStatusBarItem$VisibilityReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findManager(Landroid/view/View;)Lorg/lineageos/internal/statusbar/LineageStatusBarItem$Manager;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    instance-of v1, v0, Lorg/lineageos/internal/statusbar/LineageStatusBarItem$Manager;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/lineageos/internal/statusbar/LineageStatusBarItem$Manager;

    return-object v0

    :cond_1
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lorg/lineageos/internal/statusbar/LineageStatusBarItem;->findManager(Landroid/view/View;)Lorg/lineageos/internal/statusbar/LineageStatusBarItem$Manager;

    move-result-object v1

    return-object v1

    :cond_2
    return-object v2
.end method
