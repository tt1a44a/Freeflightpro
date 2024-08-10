.class public Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;
.super Ljava/lang/Object;
.source "VmMediaEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;
    }
.end annotation


# static fields
.field private static c:I

.field private static d:F

.field private static e:F


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x12c

    sput v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->c:I

    .line 21
    const v0, 0x3fcccccd    # 1.6f

    sput v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    .line 22
    const v0, 0x3f666666    # 0.9f

    sput v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->a:Ljava/util/Map;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a()F
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    return v0
.end method

.method private a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;

    return-object v0
.end method

.method private a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;",
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {p2, p1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;->pause(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)V

    .line 387
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b()F
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    return v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 235
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->b:Ljava/util/List;

    monitor-enter v1

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 237
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 241
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    return-void
.end method


# virtual methods
.method public addTransition(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public drawFrames(Ljava/util/List;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;",
            ">;",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;",
            ")V"
        }
    .end annotation

    .prologue
    .line 403
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 405
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    .line 407
    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;

    move-result-object v2

    .line 409
    if-eqz v2, :cond_0

    .line 413
    invoke-interface {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;->getTextureInfo()Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;

    move-result-object v3

    .line 414
    sget-object v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$3;->a:[I

    iget-object v4, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;->type:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;

    invoke-virtual {v4}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$TextureType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    move-object v0, p3

    .line 422
    :goto_1
    new-instance v4, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$2;

    invoke-direct {v4, p0, v2, v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$2;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v4, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender;->drawFrame(Lcom/muvee/dsg/mmas/api/advancevideomixer/TextureInfo;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmTextureRender$DrawFrameHandler;F)V

    .line 403
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    move-object v0, p2

    .line 417
    goto :goto_1

    :pswitch_1
    move-object v0, p3

    .line 419
    goto :goto_1

    .line 431
    :cond_1
    return-void

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasMedia()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mediaPlayers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public onAddToOutputListChanged(Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 93
    if-eqz p2, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->c()V

    .line 97
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 99
    new-instance v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;

    invoke-direct {v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;-><init>()V

    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_1
    :pswitch_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;

    .line 180
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;

    if-nez v1, :cond_1

    .line 182
    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;

    invoke-direct {v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;-><init>()V

    .line 184
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 209
    :cond_1
    :goto_2
    :pswitch_1
    const-string v4, "left"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    aput v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    aput v7, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 210
    const-string/jumbo v5, "top"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    aput v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    aput v8, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 211
    const-string/jumbo v6, "right"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget-object v9, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    aput v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    aput v9, v7, v8

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 212
    const-string v7, "bottom"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    iget-object v1, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    aput v1, v8, v9

    const/4 v1, 0x1

    iget-object v3, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    aput v3, v8, v1

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 215
    new-instance v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;

    invoke-direct {v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;-><init>()V

    .line 217
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    aput-object v5, v7, v4

    const/4 v4, 0x2

    aput-object v6, v7, v4

    const/4 v4, 0x3

    aput-object v1, v7, v4

    invoke-static {v3, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 221
    iget-object v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->b:Ljava/util/List;

    monitor-enter v4

    .line 222
    :try_start_0
    iget-object v5, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->b:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    sget v4, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->c:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 225
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 227
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->a:Ljava/util/Map;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 106
    :pswitch_2
    packed-switch v2, :pswitch_data_2

    goto/16 :goto_1

    .line 108
    :pswitch_3
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 109
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 110
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 111
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 114
    :pswitch_4
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 115
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 116
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 117
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 122
    :pswitch_5
    packed-switch v2, :pswitch_data_3

    goto/16 :goto_1

    .line 124
    :pswitch_6
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 125
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 126
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 127
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 132
    :pswitch_7
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 133
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 134
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 135
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 138
    :pswitch_8
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 139
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 140
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 141
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 146
    :pswitch_9
    packed-switch v2, :pswitch_data_4

    goto/16 :goto_1

    .line 148
    :pswitch_a
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 149
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 150
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 151
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 155
    :pswitch_b
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 156
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 157
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 158
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 161
    :pswitch_c
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 162
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 163
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 164
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 167
    :pswitch_d
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 168
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 169
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 170
    iget-object v0, v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 188
    :pswitch_e
    iget-object v4, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v5, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 189
    iget-object v4, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 190
    iget-object v4, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v5, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 191
    iget-object v4, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v5, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 194
    :pswitch_f
    iget-object v4, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 195
    iget-object v4, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 196
    iget-object v4, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v5, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 197
    iget-object v4, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 200
    :pswitch_10
    iget-object v4, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v5, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 201
    iget-object v4, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 202
    iget-object v4, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v5, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 203
    iget-object v4, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 223
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 229
    :cond_2
    return-void

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_9
    .end packed-switch

    .line 184
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 106
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 122
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 146
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public onRemoveFromOutput(ILcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Ljava/util/List;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;",
            "Ljava/util/List",
            "<",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;",
            ">;",
            "Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 253
    if-eqz p5, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->c()V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;

    .line 258
    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;

    invoke-direct {v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;-><init>()V

    .line 260
    if-eqz v0, :cond_1

    .line 261
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 343
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 344
    const-string v2, "left"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    aput v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    aput v5, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 345
    const-string/jumbo v3, "top"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    aput v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    aput v6, v4, v5

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 346
    const-string/jumbo v4, "right"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    aput v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    aput v7, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 347
    const-string v5, "bottom"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    aput v8, v6, v7

    const/4 v7, 0x1

    iget-object v1, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    aput v1, v6, v7

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 349
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const/4 v2, 0x2

    aput-object v4, v5, v2

    const/4 v2, 0x3

    aput-object v1, v5, v2

    invoke-static {v0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->b:Ljava/util/List;

    monitor-enter v1

    .line 353
    :try_start_0
    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    sget v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->c:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 356
    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$1;

    invoke-direct {v1, p0, p2, p4, p3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$1;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 375
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->onAddToOutputListChanged(Ljava/util/List;Z)V

    .line 377
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    :goto_1
    return-void

    .line 263
    :pswitch_0
    invoke-direct {p0, p2, p4, p3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmFrame;Lcom/muvee/dsg/mmas/api/advancevideomixer/AdvanceVideoMixer;Ljava/util/List;)V

    .line 264
    const/4 v0, 0x0

    .line 265
    goto/16 :goto_0

    .line 267
    :pswitch_1
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 269
    :pswitch_2
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 270
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 271
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 272
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 275
    :pswitch_3
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 276
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 277
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 278
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 283
    :pswitch_4
    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 285
    :pswitch_5
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 288
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 289
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 290
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 294
    :pswitch_6
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 295
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 296
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 297
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 301
    :pswitch_7
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 302
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 303
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 304
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 311
    :pswitch_8
    packed-switch p1, :pswitch_data_3

    goto/16 :goto_0

    .line 313
    :pswitch_9
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p3, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 314
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 315
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 316
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 317
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 320
    :pswitch_a
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {p3, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 321
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 322
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 323
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 324
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->e:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 327
    :pswitch_b
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 328
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 329
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 330
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 333
    :pswitch_c
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 334
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 335
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    sget v3, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->d:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 336
    iget-object v2, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor$Values;->rectF:Landroid/graphics/RectF;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 354
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 379
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaEditor;->onAddToOutputListChanged(Ljava/util/List;Z)V

    goto/16 :goto_1

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_8
    .end packed-switch

    .line 267
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 283
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 311
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public removeTransition(II)V
    .locals 0

    .prologue
    .line 435
    return-void
.end method
