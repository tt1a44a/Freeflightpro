.class Lcom/parrot/freeflight/map/MapPreloadActivity$2;
.super Ljava/lang/Object;
.source "MapPreloadActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/map/PreloadMapManager$PreloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/map/MapPreloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/map/MapPreloadActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$2;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public preloadAvailable(Z)V
    .locals 2
    .param p1, "available"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$2;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$402(Lcom/parrot/freeflight/map/MapPreloadActivity;Z)Z

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$2;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$600(Lcom/parrot/freeflight/map/MapPreloadActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$2;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$400(Lcom/parrot/freeflight/map/MapPreloadActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$2;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$500(Lcom/parrot/freeflight/map/MapPreloadActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public preloadCancelled()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$2;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$700(Lcom/parrot/freeflight/map/MapPreloadActivity;)V

    .line 93
    return-void
.end method

.method public preloadProgress(II)V
    .locals 7
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    .line 103
    add-int/lit8 v0, p1, 0x1

    .line 104
    .local v0, "currentDisplayed":I
    const/16 v2, 0x2710

    div-int v1, v2, p2

    .line 105
    .local v1, "step":I
    iget-object v2, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$2;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$800(Lcom/parrot/freeflight/map/MapPreloadActivity;)Landroid/graphics/drawable/ClipDrawable;

    move-result-object v2

    mul-int v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 106
    iget-object v2, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$2;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$900(Lcom/parrot/freeflight/map/MapPreloadActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$2;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    const v4, 0x7f1103c2

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/map/MapPreloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method public preloadSuccess()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$2;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$700(Lcom/parrot/freeflight/map/MapPreloadActivity;)V

    .line 98
    return-void
.end method
