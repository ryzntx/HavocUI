.class Lcom/android/systemui/statusbar/phone/NavigationBarView$7;
.super Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;
.source "OpaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "7"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarView$7$1;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/phone/NavigationBarView$7;)Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method


# virtual methods
.method public onUpdateNavigationBarIconColor(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput p2, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverrideIconColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOverrideIconColor:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHalo:Lcom/android/systemui/statusbar/phone/navigation/halo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$7$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$7$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
