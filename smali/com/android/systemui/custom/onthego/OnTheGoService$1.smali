.class Lcom/android/systemui/custom/onthego/OnTheGoService$1;
.super Ljava/lang/Object;
.source "OnTheGoService.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/custom/onthego/OnTheGoService;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/custom/onthego/OnTheGoService;


# direct methods
.method constructor <init>(Lcom/android/systemui/custom/onthego/OnTheGoService;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/systemui/custom/onthego/OnTheGoService$1;->this$0:Lcom/android/systemui/custom/onthego/OnTheGoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 180
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/custom/onthego/OnTheGoService$1;->this$0:Lcom/android/systemui/custom/onthego/OnTheGoService;

    invoke-static {p2}, Lcom/android/systemui/custom/onthego/OnTheGoService;->access$000(Lcom/android/systemui/custom/onthego/OnTheGoService;)Landroid/hardware/Camera;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 181
    iget-object p2, p0, Lcom/android/systemui/custom/onthego/OnTheGoService$1;->this$0:Lcom/android/systemui/custom/onthego/OnTheGoService;

    invoke-static {p2}, Lcom/android/systemui/custom/onthego/OnTheGoService;->access$000(Lcom/android/systemui/custom/onthego/OnTheGoService;)Landroid/hardware/Camera;

    move-result-object p2

    const/16 p3, 0x5a

    invoke-virtual {p2, p3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 182
    iget-object p2, p0, Lcom/android/systemui/custom/onthego/OnTheGoService$1;->this$0:Lcom/android/systemui/custom/onthego/OnTheGoService;

    invoke-static {p2}, Lcom/android/systemui/custom/onthego/OnTheGoService;->access$000(Lcom/android/systemui/custom/onthego/OnTheGoService;)Landroid/hardware/Camera;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 183
    iget-object p0, p0, Lcom/android/systemui/custom/onthego/OnTheGoService$1;->this$0:Lcom/android/systemui/custom/onthego/OnTheGoService;

    invoke-static {p0}, Lcom/android/systemui/custom/onthego/OnTheGoService;->access$000(Lcom/android/systemui/custom/onthego/OnTheGoService;)Landroid/hardware/Camera;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/systemui/custom/onthego/OnTheGoService$1;->this$0:Lcom/android/systemui/custom/onthego/OnTheGoService;

    invoke-static {p0}, Lcom/android/systemui/custom/onthego/OnTheGoService;->access$100(Lcom/android/systemui/custom/onthego/OnTheGoService;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
