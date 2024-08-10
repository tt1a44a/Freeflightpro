.class Lcom/parrot/freeflight/offer/OfferPageFragment$1;
.super Ljava/lang/Object;
.source "OfferPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/offer/OfferPageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/offer/OfferPageFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/offer/OfferPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/offer/OfferPageFragment;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/parrot/freeflight/offer/OfferPageFragment$1;->this$0:Lcom/parrot/freeflight/offer/OfferPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/offer/OfferPageFragment$1;->this$0:Lcom/parrot/freeflight/offer/OfferPageFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/offer/OfferPageFragment;->access$000(Lcom/parrot/freeflight/offer/OfferPageFragment;)V

    .line 127
    return-void
.end method
