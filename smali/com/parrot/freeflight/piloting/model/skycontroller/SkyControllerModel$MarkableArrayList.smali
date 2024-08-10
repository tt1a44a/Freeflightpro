.class public Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;
.super Ljava/util/ArrayList;
.source "SkyControllerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarkableArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mUpdated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 212
    .local p0, "this":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;
    .param p1, "x1"    # Z

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->mUpdated:Z

    return p1
.end method


# virtual methods
.method public isUpdated()Z
    .locals 1

    .prologue
    .line 217
    .local p0, "this":Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;, "Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList<TT;>;"
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$MarkableArrayList;->mUpdated:Z

    return v0
.end method
