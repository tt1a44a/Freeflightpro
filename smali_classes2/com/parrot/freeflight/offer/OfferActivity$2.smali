.class Lcom/parrot/freeflight/offer/OfferActivity$2;
.super Ljava/lang/Object;
.source "OfferActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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

.field final synthetic val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/offer/OfferActivity;Lcom/parrot/freeflight/view/ViewPagerIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/offer/OfferActivity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/parrot/freeflight/offer/OfferActivity$2;->this$0:Lcom/parrot/freeflight/offer/OfferActivity;

    iput-object p2, p0, Lcom/parrot/freeflight/offer/OfferActivity$2;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/offer/OfferActivity$2;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->onPageScrollStateChanged(I)V

    .line 83
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/parrot/freeflight/offer/OfferActivity$2;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->onPageScrolled(IFI)V

    .line 71
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/offer/OfferActivity$2;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->onPageSelected(I)V

    .line 77
    return-void
.end method
