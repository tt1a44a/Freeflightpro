.class public Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;
.super Landroid/util/SparseArray;
.source "RcControllerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;
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
.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .prologue
    .line 97
    .local p0, "this":Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;, "Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray<TT;>;"
    invoke-direct {p0, p1}, Landroid/util/SparseArray;-><init>(I)V

    .line 98
    return-void
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;->mUpdated:Z

    return p1
.end method


# virtual methods
.method public isUpdated()Z
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;, "Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray<TT;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel$MarkableSparseArray;->mUpdated:Z

    return v0
.end method
