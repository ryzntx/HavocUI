.class Lcom/android/systemui/statusbar/phone/NavigationBarView$7$1;
.super Ljava/lang/Object;
.source "OpaLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView$7;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView$7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$7$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView$7;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/phone/NavigationBarView$7$1;)Lcom/android/systemui/statusbar/phone/NavigationBarView$7;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$7$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView$7;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$7$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView$7;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$7;->access$0(Lcom/android/systemui/statusbar/phone/NavigationBarView$7;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHalo:Lcom/android/systemui/statusbar/phone/navigation/halo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$7$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView$7;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$7;->access$0(Lcom/android/systemui/statusbar/phone/NavigationBarView$7;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverrideIconColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/navigation/halo;->setKolor(I)V

    return-void
.end method
