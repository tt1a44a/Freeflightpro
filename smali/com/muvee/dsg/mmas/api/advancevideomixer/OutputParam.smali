.class public Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;
.super Ljava/lang/Object;
.source "OutputParam.java"


# instance fields
.field public file:Ljava/lang/String;

.field public height:I

.field public loopVideo:Z

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/16 v0, 0x500

    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;->width:I

    .line 7
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;->height:I

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;->loopVideo:Z

    return-void
.end method
