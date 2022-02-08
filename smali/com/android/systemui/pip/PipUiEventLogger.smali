.class public Lcom/android/systemui/pip/PipUiEventLogger;
.super Ljava/lang/Object;
.source "PipUiEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;
    }
.end annotation


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mPackageUid:I

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;Landroid/content/pm/PackageManager;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/android/systemui/pip/PipUiEventLogger;->mPackageUid:I

    .line 45
    iput-object p1, p0, Lcom/android/systemui/pip/PipUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 46
    iput-object p2, p0, Lcom/android/systemui/pip/PipUiEventLogger;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private getUid(Ljava/lang/String;I)I
    .locals 1

    .line 72
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/pip/PipUiEventLogger;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public log(Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/android/systemui/pip/PipUiEventLogger;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/systemui/pip/PipUiEventLogger;->mPackageUid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pip/PipUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p0, p1, v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTaskInfo(Landroid/app/TaskInfo;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/android/systemui/pip/PipUiEventLogger;->mPackageName:Ljava/lang/String;

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/android/systemui/pip/PipUiEventLogger;->mPackageUid:I

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/PipUiEventLogger;->mPackageName:Ljava/lang/String;

    .line 55
    iget p1, p1, Landroid/app/TaskInfo;->userId:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/pip/PipUiEventLogger;->getUid(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/pip/PipUiEventLogger;->mPackageUid:I

    :goto_0
    return-void
.end method
