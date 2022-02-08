.class Lcom/android/systemui/statusbar/policy/BatteryBar$100000003;
.super Ljava/lang/Object;
.source "BatteryBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000003"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$100000003;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/policy/BatteryBar$100000003;)Lcom/android/systemui/statusbar/policy/BatteryBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$100000003;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/BatteryBar;->isEnable:Z

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$100000003;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$100000003;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$L1000065(Lcom/android/systemui/statusbar/policy/BatteryBar;)I

    move-result v0

    if-eq v0, v5, :cond_0

    const-string v0, "#FF000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$100000003;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$L1000065(Lcom/android/systemui/statusbar/policy/BatteryBar;)I

    move-result v4

    if-eq v4, v5, :cond_1

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->setColorBar(IF)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$100000003;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->invalidate()V

    return-void

    :cond_0
    const-string v0, "#FFFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_1
    move v1, v2

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$100000003;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$100000003;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->access$L1000066(Lcom/android/systemui/statusbar/policy/BatteryBar;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryBar;->setColorBar(IF)V

    goto/16 :goto_2
.end method
