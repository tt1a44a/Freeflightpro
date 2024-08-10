.class public Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;
.super Landroid/util/SparseArray;
.source "SkyControllerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarkableSparseArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/SparseArray",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mUpdated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 477
    .local p0, "this":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray<TT;>;"
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method

.method static synthetic access$1202(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;
    .param p1, "x1"    # Z

    .prologue
    .line 477
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->mUpdated:Z

    return p1
.end method


# virtual methods
.method public isUpdated()Z
    .locals 1

    .prologue
    .line 482
    .local p0, "this":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray<TT;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableSparseArray;->mUpdated:Z

    return v0
.end method
