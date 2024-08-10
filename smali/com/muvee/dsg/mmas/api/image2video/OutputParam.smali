.class public Lcom/muvee/dsg/mmas/api/image2video/OutputParam;
.super Ljava/lang/Object;
.source "OutputParam.java"


# instance fields
.field public file:Ljava/lang/String;

.field public fps:I

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/16 v0, 0x500

    iput v0, p0, Lcom/muvee/dsg/mmas/api/image2video/OutputParam;->width:I

    .line 7
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/muvee/dsg/mmas/api/image2video/OutputParam;->height:I

    .line 8
    const/16 v0, 0x1e

    iput v0, p0, Lcom/muvee/dsg/mmas/api/image2video/OutputParam;->fps:I

    return-void
.end method
