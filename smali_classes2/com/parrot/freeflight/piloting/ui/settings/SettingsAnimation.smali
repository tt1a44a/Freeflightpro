.class public Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation;
.super Ljava/lang/Object;
.source "SettingsAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    .prologue
    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 133
    invoke-static {p0, p1, p2, p3, p4}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation;->createCircularRevealCompat(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method private static createCircularRevealCompat(Landroid/view/View;IIFF)Landroid/animation/Animator;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "initialRadius"    # F
    .param p4, "finalRadius"    # F

    .prologue
    .line 103
    instance-of v2, p0, Lcom/parrot/freeflight/util/ui/ICircularRevealable;

    if-nez v2, :cond_0

    .line 104
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Trying to animate a view that does not implement ICircularRevealedCompatible"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v2, p0

    .line 106
    check-cast v2, Lcom/parrot/freeflight/util/ui/ICircularRevealable;

    invoke-interface {v2}, Lcom/parrot/freeflight/util/ui/ICircularRevealable;->getPath()Landroid/graphics/Path;

    move-result-object v1

    .line 107
    .local v1, "path":Landroid/graphics/Path;
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p3, v2, v3

    const/4 v3, 0x1

    aput p4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 108
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$4;

    invoke-direct {v2, v1, p1, p2, p0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$4;-><init>(Landroid/graphics/Path;IILandroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 116
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$5;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$5;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 127
    return-object v0
.end method

.method public static hideSettings(Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 8
    .param p0, "settingsView"    # Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "settingsButton"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "endAction"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    if-eqz p0, :cond_0

    .line 63
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-ge v6, v7, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$2;

    invoke-direct {v7, p0, p2}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$2;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->getWidth()I

    move-result v5

    .line 75
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->getHeight()I

    move-result v3

    .line 76
    .local v3, "height":I
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 79
    .local v4, "initialRadius":I
    if-eqz p1, :cond_2

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 81
    .local v1, "cx":I
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v2, v6, v7

    .line 87
    .local v2, "cy":I
    :goto_1
    int-to-float v6, v4

    const/4 v7, 0x0

    invoke-static {p0, v1, v2, v6, v7}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 88
    .local v0, "anim":Landroid/animation/Animator;
    new-instance v6, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$3;

    invoke-direct {v6, p0, p2}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$3;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 97
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 83
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "cx":I
    .end local v2    # "cy":I
    :cond_2
    div-int/lit8 v1, v5, 0x2

    .line 84
    .restart local v1    # "cx":I
    div-int/lit8 v2, v3, 0x2

    .restart local v2    # "cy":I
    goto :goto_1
.end method

.method public static revealSettings(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;Landroid/view/View;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;I)V
    .locals 17
    .param p0    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/parrot/freeflight/core/model/Model;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "settingsParentView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "settingsButton"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "relativePositionController"    # Lcom/parrot/freeflight/piloting/RelativePositionController;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parrot/freeflight/core/model/Model;",
            "U:",
            "Lcom/parrot/freeflight/core/model/Model;",
            "V:",
            "Lcom/parrot/freeflight/core/model/Model;",
            ">(TT;TU;TV;",
            "Landroid/view/View;",
            "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView",
            "<TT;TU;TV;>;",
            "Landroid/view/View;",
            "Lcom/parrot/freeflight/piloting/RelativePositionController;",
            "Lcom/parrot/freeflight/piloting/ui/util/ProductColor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "model":Lcom/parrot/freeflight/core/model/Model;, "TT;"
    .local p1, "localSettingsModel":Lcom/parrot/freeflight/core/model/Model;, "TU;"
    .local p2, "remoteControllerModel":Lcom/parrot/freeflight/core/model/Model;, "TV;"
    .local p4, "settingsView":Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;, "Lcom/parrot/freeflight/piloting/ui/settings/SettingsView<TT;TU;TV;>;"
    if-eqz p4, :cond_0

    .line 26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_2

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 27
    invoke-virtual/range {v2 .. v8}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->show(Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;I)V

    .line 28
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v14, v2

    .line 29
    .local v14, "height":F
    :goto_0
    neg-float v2, v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->setTranslationY(F)V

    .line 30
    invoke-virtual/range {p4 .. p4}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 59
    .end local v14    # "height":F
    :cond_0
    :goto_1
    return-void

    .line 28
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->getHeight()I

    move-result v2

    int-to-float v14, v2

    goto :goto_0

    .line 32
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getWidth()I

    move-result v16

    .line 33
    .local v16, "width":I
    :goto_2
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getHeight()I

    move-result v14

    .line 34
    .local v14, "height":I
    :goto_3
    move/from16 v0, v16

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 37
    .local v13, "finalRadius":I
    if-eqz p5, :cond_5

    .line 38
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    .line 39
    .local v11, "cx":I
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v12, v2, v3

    .line 40
    .local v12, "cy":I
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 47
    .local v15, "startingRadius":I
    :goto_4
    int-to-float v2, v15

    int-to-float v3, v13

    move-object/from16 v0, p4

    invoke-static {v0, v11, v12, v2, v3}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v10

    .line 48
    .local v10, "anim":Landroid/animation/Animator;
    const-wide/16 v2, 0x258

    invoke-virtual {v10, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 49
    move/from16 v9, p8

    .line 50
    .local v9, "finalCategory":I
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$1;

    move-object/from16 v3, p4

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v9}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsAnimation$1;-><init>(Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/freeflight/piloting/RelativePositionController;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;I)V

    invoke-virtual {v10, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 56
    invoke-virtual {v10}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 32
    .end local v9    # "finalCategory":I
    .end local v10    # "anim":Landroid/animation/Animator;
    .end local v11    # "cx":I
    .end local v12    # "cy":I
    .end local v13    # "finalRadius":I
    .end local v14    # "height":I
    .end local v15    # "startingRadius":I
    .end local v16    # "width":I
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->getWidth()I

    move-result v16

    goto :goto_2

    .line 33
    .restart local v16    # "width":I
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/parrot/freeflight/piloting/ui/settings/SettingsView;->getHeight()I

    move-result v14

    goto :goto_3

    .line 42
    .restart local v13    # "finalRadius":I
    .restart local v14    # "height":I
    :cond_5
    div-int/lit8 v11, v16, 0x2

    .line 43
    .restart local v11    # "cx":I
    div-int/lit8 v12, v14, 0x2

    .line 44
    .restart local v12    # "cy":I
    const/4 v15, 0x0

    .restart local v15    # "startingRadius":I
    goto :goto_4
.end method
