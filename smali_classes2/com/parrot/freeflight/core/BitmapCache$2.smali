.class Lcom/parrot/freeflight/core/BitmapCache$2;
.super Ljava/lang/Object;
.source "BitmapCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/core/BitmapCache;->loadBitmap(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/BitmapCache;

.field final synthetic val$resId:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/BitmapCache;ILandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/BitmapCache;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/parrot/freeflight/core/BitmapCache$2;->this$0:Lcom/parrot/freeflight/core/BitmapCache;

    iput p2, p0, Lcom/parrot/freeflight/core/BitmapCache$2;->val$resId:I

    iput-object p3, p0, Lcom/parrot/freeflight/core/BitmapCache$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 73
    iget-object v0, p0, Lcom/parrot/freeflight/core/BitmapCache$2;->this$0:Lcom/parrot/freeflight/core/BitmapCache;

    iget v1, p0, Lcom/parrot/freeflight/core/BitmapCache$2;->val$resId:I

    iget-object v2, p0, Lcom/parrot/freeflight/core/BitmapCache$2;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/parrot/freeflight/core/BitmapCache$2;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/core/BitmapCache$2;->val$view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/core/BitmapCache;->loadBitmap(ILandroid/view/View;II)V

    .line 74
    return-void
.end method
