.class Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationStackScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$4;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$4;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$502(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
