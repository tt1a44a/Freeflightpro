.class public Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;
.super Ljava/lang/Object;
.source "BitmapCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/text/custom/seqment/BitmapCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceDescription"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v0, 0x3f000000    # 0.5f

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;->a:F

    .line 32
    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;->b:F

    .line 33
    iput v1, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;->c:F

    .line 34
    iput v1, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;->d:F

    return-void
.end method


# virtual methods
.method public getCenterX()F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;->a:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;->b:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;->d:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;->c:F

    return v0
.end method

.method public setCenterX(F)Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;->a:F

    .line 42
    return-object p0
.end method

.method public setCenterY(F)Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;->b:F

    .line 51
    return-object p0
.end method

.method public setHeight(F)Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;->d:F

    .line 69
    return-object p0
.end method

.method public setWidth(F)Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/BitmapCollection$SourceDescription;->c:F

    .line 60
    return-object p0
.end method
