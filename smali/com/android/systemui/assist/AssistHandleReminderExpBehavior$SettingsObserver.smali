.class final Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AssistHandleReminderExpBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$SettingsObserver;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    .line 626
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 627
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$SettingsObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    .line 632
    invoke-static {}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$700()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$SettingsObserver;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    invoke-static {v0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$900(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)Landroidx/slice/Clock;

    move-result-object v1

    invoke-interface {v1}, Landroidx/slice/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$802(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;J)J

    .line 634
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$SettingsObserver;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$SettingsObserver;->mContext:Landroid/content/Context;

    .line 635
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-string v4, "reminder_exp_learning_time_elapsed"

    .line 634
    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$1002(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;J)J

    goto :goto_0

    .line 638
    :cond_0
    invoke-static {}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$1100()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$SettingsObserver;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$SettingsObserver;->mContext:Landroid/content/Context;

    .line 640
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "reminder_exp_learning_event_count"

    .line 639
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$1202(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;I)I

    .line 645
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method
