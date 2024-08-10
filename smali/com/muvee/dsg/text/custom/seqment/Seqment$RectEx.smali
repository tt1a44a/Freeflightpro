.class public Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;
.super Ljava/lang/Object;
.source "Seqment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/text/custom/seqment/Seqment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RectEx"
.end annotation


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;)V
    .locals 1

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    new-instance v0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    invoke-direct {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->b:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    .line 435
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->a:Landroid/graphics/RectF;

    .line 436
    iput-object p2, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->b:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    .line 437
    return-void
.end method


# virtual methods
.method public getRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->a:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRotation()Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->b:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    return-object v0
.end method

.method public setRect(Landroid/graphics/RectF;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->a:Landroid/graphics/RectF;

    .line 445
    return-object p0
.end method

.method public setRotation(Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;)Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$RectEx;->b:Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    .line 464
    return-object p0
.end method
