.class public abstract Lcom/bumptech/glide/request/target/CustomViewTarget;
.super Ljava/lang/Object;
.source "CustomViewTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/target/Target;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/target/Target",
        "<TZ;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomViewTarget"

.field private static final VIEW_TAG_ID:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field


# instance fields
.field private attachStateListener:Landroid/view/View$OnAttachStateChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private isAttachStateListenerAdded:Z

.field private isClearedByUs:Z

.field private overrideTag:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private final sizeDeterminer:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

.field protected final view:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/bumptech/glide/R$id;->glide_custom_view_target_tag:I

    sput v0, Lcom/bumptech/glide/request/target/CustomViewTarget;->VIEW_TAG_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    .line 50
    new-instance v0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

    .line 51
    return-void
.end method

.method private getTag()Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    iget v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->overrideTag:I

    if-nez v0, :cond_0

    sget v0, Lcom/bumptech/glide/request/target/CustomViewTarget;->VIEW_TAG_ID:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->overrideTag:I

    goto :goto_0
.end method

.method private maybeAddAttachStateListener()V
    .locals 2

    .prologue
    .line 277
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isAttachStateListenerAdded:Z

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isAttachStateListenerAdded:Z

    goto :goto_0
.end method

.method private maybeRemoveAttachStateListener()V
    .locals 2

    .prologue
    .line 286
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isAttachStateListenerAdded:Z

    if-nez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isAttachStateListenerAdded:Z

    goto :goto_0
.end method

.method private setTag(Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 268
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    iget v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->overrideTag:I

    if-nez v0, :cond_0

    sget v0, Lcom/bumptech/glide/request/target/CustomViewTarget;->VIEW_TAG_ID:I

    :goto_0
    invoke-virtual {v1, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 269
    return-void

    .line 268
    :cond_0
    iget v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->overrideTag:I

    goto :goto_0
.end method


# virtual methods
.method public final clearOnDetach()Lcom/bumptech/glide/request/target/CustomViewTarget;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/CustomViewTarget",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 153
    :goto_0
    return-object p0

    .line 141
    :cond_0
    new-instance v0, Lcom/bumptech/glide/request/target/CustomViewTarget$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/request/target/CustomViewTarget$1;-><init>(Lcom/bumptech/glide/request/target/CustomViewTarget;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 152
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->maybeAddAttachStateListener()V

    goto :goto_0
.end method

.method public final getRequest()Lcom/bumptech/glide/request/Request;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 232
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 233
    instance-of v1, v0, Lcom/bumptech/glide/request/Request;

    if-eqz v1, :cond_0

    .line 234
    check-cast v0, Lcom/bumptech/glide/request/Request;

    .line 239
    .end local v0    # "tag":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 236
    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You must not pass non-R.id ids to setTag(id)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/bumptech/glide/request/target/SizeReadyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 193
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 194
    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 88
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    return-void
.end method

.method public final onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 209
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->clearCallbacksAndListener()V

    .line 211
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget;->onResourceCleared(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-boolean v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isClearedByUs:Z

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->maybeRemoveAttachStateListener()V

    .line 215
    :cond_0
    return-void
.end method

.method public final onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 203
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->maybeAddAttachStateListener()V

    .line 204
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget;->onResourceLoading(Landroid/graphics/drawable/Drawable;)V

    .line 205
    return-void
.end method

.method protected abstract onResourceCleared(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected onResourceLoading(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 73
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 78
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 83
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    return-void
.end method

.method final pauseMyRequest()V
    .locals 2

    .prologue
    .line 259
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .line 260
    .local v0, "request":Lcom/bumptech/glide/request/Request;
    if-eqz v0, :cond_0

    .line 261
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isClearedByUs:Z

    .line 262
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 263
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->isClearedByUs:Z

    .line 265
    :cond_0
    return-void
.end method

.method public final removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/bumptech/glide/request/target/SizeReadyCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 198
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 199
    return-void
.end method

.method final resumeMyRequest()V
    .locals 2

    .prologue
    .line 250
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/CustomViewTarget;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .line 251
    .local v0, "request":Lcom/bumptech/glide/request/Request;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isCleared()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->begin()V

    .line 254
    :cond_0
    return-void
.end method

.method public final setRequest(Lcom/bumptech/glide/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/bumptech/glide/request/Request;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 224
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/CustomViewTarget;->setTag(Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final useTagId(I)Lcom/bumptech/glide/request/target/CustomViewTarget;
    .locals 2
    .param p1, "tagId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/request/target/CustomViewTarget",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    iget v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->overrideTag:I

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot change the tag id once it has been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->overrideTag:I

    .line 173
    return-object p0
.end method

.method public final waitForLayout()Lcom/bumptech/glide/request/target/CustomViewTarget;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/request/target/CustomViewTarget",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/bumptech/glide/request/target/CustomViewTarget;, "Lcom/bumptech/glide/request/target/CustomViewTarget<TT;TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/request/target/CustomViewTarget$SizeDeterminer;->waitForLayout:Z

    .line 113
    return-object p0
.end method
