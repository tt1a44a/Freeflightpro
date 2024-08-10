.class Lcom/parrot/freeflight/offer/OfferActivity$1;
.super Ljava/lang/Object;
.source "OfferActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/offer/OfferActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/offer/OfferActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/offer/OfferActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/offer/OfferActivity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/parrot/freeflight/offer/OfferActivity$1;->this$0:Lcom/parrot/freeflight/offer/OfferActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/offer/OfferActivity$1;->this$0:Lcom/parrot/freeflight/offer/OfferActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/offer/OfferActivity;->finish()V

    .line 58
    return-void
.end method
