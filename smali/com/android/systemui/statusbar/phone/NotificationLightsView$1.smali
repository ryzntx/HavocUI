.class Lcom/android/systemui/statusbar/phone/NotificationLightsView$1;
.super Ljava/lang/Object;
.source "NotificationLightsView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationLightsView;->animateNotificationWithColor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationLightsView;Landroid/content/ContentResolver;)V
    .locals 0

    .line 154
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationLightsView$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 163
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationLightsView$1;->val$resolver:Landroid/content/ContentResolver;

    const-string v0, "ambient_notification_light_activated"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 166
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationLightsView$1;->val$resolver:Landroid/content/ContentResolver;

    const-string p1, "ambient_notification_light"

    invoke-static {p0, p1, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
