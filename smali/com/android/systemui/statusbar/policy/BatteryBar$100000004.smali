.class Lcom/android/systemui/statusbar/policy/BatteryBar$100000004;
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
    name = "100000004"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$100000004;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/policy/BatteryBar$100000004;)Lcom/android/systemui/statusbar/policy/BatteryBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$100000004;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$100000004;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    const-string v1, "#FFFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryBar;->setColorBar(IF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$100000004;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->invalidate()V

    return-void
.end method
