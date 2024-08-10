.class Lcom/parrot/freeflight/map/MapPreloadActivity$5;
.super Ljava/lang/Object;
.source "MapPreloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/map/MapPreloadActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 177
    iput-object p1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$5;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$5;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$1500(Lcom/parrot/freeflight/map/MapPreloadActivity;)Lcom/parrot/freeflight/map/PreloadMapManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/PreloadMapManager;->centerOnHome()V

    .line 181
    return-void
.end method
