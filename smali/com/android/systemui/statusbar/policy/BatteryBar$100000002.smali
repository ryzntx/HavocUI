.class Lcom/android/systemui/statusbar/policy/BatteryBar$100000002;
.super Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;
.source "BatteryBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryBar;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$100000002;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/policy/BatteryBar$100000002;)Lcom/android/systemui/statusbar/policy/BatteryBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$100000002;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    return-object v0
.end method


# virtual methods
.method public onUpdateNavigationBarColor(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$100000002;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$S1000065(Lcom/android/systemui/statusbar/policy/BatteryBar;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$100000002;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->apdetBBar()V

    return-void
.end method

.method public onUpdateNavigationBarIconColor(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$100000002;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$S1000066(Lcom/android/systemui/statusbar/policy/BatteryBar;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$100000002;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->apdetBBar()V

    return-void
.end method
