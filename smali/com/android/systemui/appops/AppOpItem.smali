.class public Lcom/android/systemui/appops/AppOpItem;
.super Ljava/lang/Object;
.source "AppOpItem.java"


# instance fields
.field private mCode:I

.field private mPackageName:Ljava/lang/String;

.field private mSilenced:Z

.field private mState:Ljava/lang/StringBuilder;

.field private mUid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;J)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    .line 34
    iput p2, p0, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    .line 35
    iput-object p3, p0, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    .line 37
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "AppOpItem("

    .line 38
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "Op code="

    .line 39
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "UID="

    .line 40
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Package name="

    .line 41
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Paused="

    .line 42
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/android/systemui/appops/AppOpItem;->mState:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()I
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    return p0
.end method

.method public isSilenced()Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/systemui/appops/AppOpItem;->mSilenced:Z

    return p0
.end method

.method public setSilenced(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/appops/AppOpItem;->mSilenced:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpItem;->mState:Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/appops/AppOpItem;->mSilenced:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
