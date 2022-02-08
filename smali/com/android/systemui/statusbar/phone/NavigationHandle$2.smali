.class Lcom/android/systemui/statusbar/phone/NavigationHandle$2;
.super Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;
.source "NavigationHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "1"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/phone/NavigationHandle$2;)Lcom/android/systemui/statusbar/phone/NavigationHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

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

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    iput p2, v0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mOverrideIconColor:I

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mOverrideIconColor:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->apdet(I)V

    return-void
.end method
