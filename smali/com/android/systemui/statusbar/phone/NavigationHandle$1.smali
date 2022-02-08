.class Lcom/android/systemui/statusbar/phone/NavigationHandle$1;
.super Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;
.source "NavigationHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;Ljava/lang/Object;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onUpdateNavigationBarIconColor(II)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$1(Lcom/android/systemui/statusbar/phone/NavigationHandle;I)I

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->apdetNavigationHandle()V

    return-void
.end method
