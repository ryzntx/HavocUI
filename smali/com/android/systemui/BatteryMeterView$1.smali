.class Lcom/android/systemui/BatteryMeterView$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0, p1}, Lcom/android/systemui/BatteryMeterView;->access$002(Lcom/android/systemui/BatteryMeterView;I)I

    .line 188
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$100(Lcom/android/systemui/BatteryMeterView;)Lcom/android/systemui/BatteryMeterView$SettingObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 189
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {p0}, Lcom/android/systemui/BatteryMeterView;->access$200(Lcom/android/systemui/BatteryMeterView;)V

    return-void
.end method
