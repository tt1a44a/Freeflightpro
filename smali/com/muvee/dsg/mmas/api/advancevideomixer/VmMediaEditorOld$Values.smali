.class public Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;
.super Ljava/lang/Object;
.source "VmMediaEditorOld.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    .line 22
    iput v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    .line 23
    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 24
    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    return-void
.end method


# virtual methods
.method public getScaleX()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    return v0
.end method

.method public getTranslateX()F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    return v0
.end method

.method public setScaleX(F)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->a:F

    .line 30
    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->b:F

    .line 36
    return-void
.end method

.method public setTranslateX(F)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->c:F

    .line 42
    return-void
.end method

.method public setTranslateY(F)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditorOld$Values;->d:F

    .line 48
    return-void
.end method
