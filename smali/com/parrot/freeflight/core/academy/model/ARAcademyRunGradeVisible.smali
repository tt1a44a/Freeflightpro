.class public Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;
.super Ljava/lang/Object;
.source "ARAcademyRunGradeVisible.java"


# static fields
.field private static final ARACADEMY_RUNGRADEVISIBLE_GRADE:Ljava/lang/String; = "grade"

.field private static final ARACADEMY_RUNGRADEVISIBLE_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_RUNGRADEVISIBLE_TAG:Ljava/lang/String; = "ARAcademyRunGradeVisible"

.field private static final ARACADEMY_RUNGRADEVISIBLE_VISIBLE:Ljava/lang/String; = "visible"


# instance fields
.field protected runGradeVisibleGrade:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "grade"
    .end annotation
.end field

.field protected runGradeVisibleVisible:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visible"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGrade()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;->runGradeVisibleGrade:I

    return v0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;->runGradeVisibleVisible:Z

    return v0
.end method

.method public setGrade(I)V
    .locals 0
    .param p1, "grade"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;->runGradeVisibleGrade:I

    .line 31
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyRunGradeVisible;->runGradeVisibleVisible:Z

    .line 39
    return-void
.end method
