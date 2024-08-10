.class public Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;
.super Ljava/lang/Object;
.source "Seqment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/text/custom/seqment/Seqment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point2D"
.end annotation


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->a:F

    .line 39
    iput p2, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->b:F

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->getX()F

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->a:F

    .line 44
    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->getY()F

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->b:F

    .line 45
    return-void
.end method

.method public static createAnimated(Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;
    .locals 4

    .prologue
    .line 81
    new-instance v0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    invoke-direct {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;-><init>()V

    .line 82
    invoke-virtual {p0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->setX(F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    .line 83
    invoke-virtual {p0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->setY(F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    .line 84
    return-object v0
.end method


# virtual methods
.method public getX()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->a:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->b:F

    return v0
.end method

.method public parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;
    .locals 4

    .prologue
    .line 66
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 69
    :pswitch_0
    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->a:F

    goto :goto_0

    .line 67
    :pswitch_1
    const-string/jumbo v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_2
    const-string/jumbo v3, "y"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    .line 72
    :pswitch_3
    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->b:F

    goto :goto_0

    .line 76
    :cond_1
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-object p0

    .line 67
    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setX(F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->a:F

    .line 53
    return-object p0
.end method

.method public setY(F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->b:F

    .line 62
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point2D{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
