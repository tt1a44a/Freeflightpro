.class public Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;
.super Ljava/lang/Object;
.source "Seqment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/text/custom/seqment/Seqment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rotation"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    invoke-direct {v0, v1, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;-><init>(FF)V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    invoke-direct {v0, v1, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;-><init>(FF)V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    .line 104
    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getX()F

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->a:F

    .line 105
    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getY()F

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->b:F

    .line 106
    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getZ()F

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->c:F

    .line 107
    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getPivot()Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getPivot()Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;-><init>(Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;)V

    iput-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    .line 110
    :cond_0
    return-void
.end method

.method public static createAnimated(Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;
    .locals 4

    .prologue
    .line 179
    invoke-static {}, Lcom/muvee/dsg/text/custom/seqment/Seqment;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAnimated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    invoke-direct {v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;-><init>()V

    .line 181
    invoke-virtual {p0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->setX(F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    .line 182
    invoke-virtual {p0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->setY(F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    .line 183
    invoke-virtual {p0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getZ()F

    move-result v1

    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getZ()F

    move-result v2

    invoke-virtual {p0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getZ()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->setZ(F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    .line 184
    invoke-virtual {p0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getPivot()Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    move-result-object v1

    invoke-virtual {p1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->getPivot()Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->createAnimated(Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->setPivot(Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;)Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;

    .line 185
    return-object v0
.end method


# virtual methods
.method public getPivot()Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->a:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->b:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->c:F

    return v0
.end method

.method public parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 149
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 152
    :pswitch_0
    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->a:F

    goto :goto_0

    .line 150
    :sswitch_0
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "pivotX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "pivotY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    .line 155
    :pswitch_1
    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->b:F

    goto :goto_0

    .line 158
    :pswitch_2
    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->c:F

    goto :goto_0

    .line 161
    :pswitch_3
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->setX(F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    goto :goto_0

    .line 164
    :pswitch_4
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    invoke-virtual {p1, v0}, Lcom/muvee/dsg/text/custom/xml/Node;->getFloatAttribute(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->setY(F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p1, Lcom/muvee/dsg/text/custom/xml/Node;->childNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/text/custom/xml/Node;

    .line 169
    iget-object v1, v0, Lcom/muvee/dsg/text/custom/xml/Node;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_2
    move v1, v3

    :goto_3
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    .line 171
    :pswitch_5
    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;->parse(Lcom/muvee/dsg/text/custom/xml/Node;)Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    goto :goto_2

    .line 169
    :pswitch_6
    const-string/jumbo v5, "pivot"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_3

    .line 175
    :cond_3
    return-object p0

    .line 150
    :sswitch_data_0
    .sparse-switch
        -0x3ae243aa -> :sswitch_3
        -0x3ae243a9 -> :sswitch_4
        0x78 -> :sswitch_0
        0x79 -> :sswitch_1
        0x7a -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 169
    :pswitch_data_1
    .packed-switch 0x65bcc42
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public setPivot(Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;)Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    .line 145
    return-object p0
.end method

.method public setX(F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->a:F

    .line 118
    return-object p0
.end method

.method public setY(F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->b:F

    .line 127
    return-object p0
.end method

.method public setZ(F)Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;
    .locals 0

    .prologue
    .line 135
    iput p1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->c:F

    .line 136
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rotation{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pivot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/text/custom/seqment/Seqment$Rotation;->d:Lcom/muvee/dsg/text/custom/seqment/Seqment$Point2D;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
