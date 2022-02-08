.class public final Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;
.super Ljava/lang/Object;
.source "MediaOutputDialogFactory.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaOutputDialogFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaOutputDialogFactory.kt\ncom/android/systemui/media/dialog/MediaOutputDialogFactory\n*L\n1#1,62:1\n*E\n"
.end annotation


# static fields
.field private static mediaOutputDialog:Lcom/android/systemui/media/dialog/MediaOutputDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final lbm:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private final mediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private final notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final routerManager:Landroid/media/MediaRouter2Manager;

.field private final shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final starter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/session/MediaSessionManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/internal/logging/UiEventLogger;Landroid/media/MediaRouter2Manager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/session/MediaSessionManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/phone/ShadeController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/plugins/ActivityStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/internal/logging/UiEventLogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroid/media/MediaRouter2Manager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaSessionManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadeController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "starter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationEntryManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiEventLogger"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routerManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    iput-object p3, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->lbm:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object p4, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    iput-object p5, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->starter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p6, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p7, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p8, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->routerManager:Landroid/media/MediaRouter2Manager;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;Z)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaOutputDialog:Lcom/android/systemui/media/dialog/MediaOutputDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 49
    :cond_0
    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->context:Landroid/content/Context;

    .line 50
    iget-object v5, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v6, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->lbm:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v7, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    iget-object v8, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->starter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v9, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 51
    iget-object v10, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v11, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->routerManager:Landroid/media/MediaRouter2Manager;

    move-object v1, v0

    move-object v3, p1

    move v4, p2

    .line 49
    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/media/dialog/MediaOutputController;-><init>(Landroid/content/Context;Ljava/lang/String;ZLandroid/media/session/MediaSessionManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/internal/logging/UiEventLogger;Landroid/media/MediaRouter2Manager;)V

    .line 52
    new-instance p1, Lcom/android/systemui/media/dialog/MediaOutputDialog;

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-direct {p1, v1, p2, v0, p0}, Lcom/android/systemui/media/dialog/MediaOutputDialog;-><init>(Landroid/content/Context;ZLcom/android/systemui/media/dialog/MediaOutputController;Lcom/android/internal/logging/UiEventLogger;)V

    .line 51
    sput-object p1, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaOutputDialog:Lcom/android/systemui/media/dialog/MediaOutputDialog;

    return-void
.end method

.method public final dismiss()V
    .locals 0

    .line 58
    sget-object p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaOutputDialog:Lcom/android/systemui/media/dialog/MediaOutputDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 p0, 0x0

    .line 59
    sput-object p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaOutputDialog:Lcom/android/systemui/media/dialog/MediaOutputDialog;

    return-void
.end method
