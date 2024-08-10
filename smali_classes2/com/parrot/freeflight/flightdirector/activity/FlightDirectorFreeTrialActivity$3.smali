.class Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$3;
.super Ljava/lang/Object;
.source "FlightDirectorFreeTrialActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

.field final synthetic val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;Lcom/parrot/freeflight/view/ViewPagerIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$3;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity;

    iput-object p2, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$3;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$3;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->onPageScrollStateChanged(I)V

    .line 156
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$3;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->onPageScrolled(IFI)V

    .line 144
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorFreeTrialActivity$3;->val$viewPagerIndicator:Lcom/parrot/freeflight/view/ViewPagerIndicator;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->onPageSelected(I)V

    .line 150
    return-void
.end method
