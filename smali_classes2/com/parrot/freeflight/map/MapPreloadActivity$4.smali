.class Lcom/parrot/freeflight/map/MapPreloadActivity$4;
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
    .line 169
    iput-object p1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$4;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$4;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->onBackPressed()V

    .line 173
    return-void
.end method