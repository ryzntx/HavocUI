.class public Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;
.super Ljava/lang/Object;
.source "BarBackgroundUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x29
    name = "UpdateListener"
.end annotation


# instance fields
.field private final mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onUpdateHeaderColor(II)V
    .locals 0

    return-void
.end method

.method public onUpdateHeaderIconColor(II)V
    .locals 0

    return-void
.end method

.method public onUpdateNavigationBarColor(II)V
    .locals 0

    return-void
.end method

.method public onUpdateNavigationBarIconColor(II)V
    .locals 0

    return-void
.end method

.method public onUpdateNotificationColor(II)V
    .locals 0

    return-void
.end method

.method public onUpdateNotificationIconColor(II)V
    .locals 0

    return-void
.end method

.method public onUpdateNotipColor(II)V
    .locals 0

    return-void
.end method

.method public onUpdateNotipIconColor(II)V
    .locals 0

    return-void
.end method

.method public onUpdateStatusBarColor(II)V
    .locals 0

    return-void
.end method

.method public onUpdateStatusBarIconColor(II)V
    .locals 0

    return-void
.end method

.method public onUpdateTileColor(II)V
    .locals 0

    return-void
.end method

.method public onUpdateTileIconColor(II)V
    .locals 0

    return-void
.end method

.method public final shouldGc()Z
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
