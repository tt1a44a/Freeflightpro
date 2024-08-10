.class Lcom/parrot/freeflight/start/CountryChoiceActivity$1;
.super Ljava/lang/Object;
.source "CountryChoiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/start/CountryChoiceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/start/CountryChoiceActivity;

.field final synthetic val$adapter:Lcom/parrot/freeflight/start/CountryChoiceActivity$CountryAdapter;

.field final synthetic val$countryListView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/start/CountryChoiceActivity;Landroid/widget/ListView;Lcom/parrot/freeflight/start/CountryChoiceActivity$CountryAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/start/CountryChoiceActivity;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/parrot/freeflight/start/CountryChoiceActivity$1;->this$0:Lcom/parrot/freeflight/start/CountryChoiceActivity;

    iput-object p2, p0, Lcom/parrot/freeflight/start/CountryChoiceActivity$1;->val$countryListView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/parrot/freeflight/start/CountryChoiceActivity$1;->val$adapter:Lcom/parrot/freeflight/start/CountryChoiceActivity$CountryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/parrot/freeflight/start/CountryChoiceActivity$1;->val$countryListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 56
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/parrot/freeflight/start/CountryChoiceActivity$1;->this$0:Lcom/parrot/freeflight/start/CountryChoiceActivity;

    sget-object v2, Lcom/parrot/freeflight/piloting/model/WifiCountry;->WIFI_COUNTRY_US:Lcom/parrot/freeflight/piloting/model/WifiCountry;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/start/CountryChoiceActivity;->access$000(Lcom/parrot/freeflight/start/CountryChoiceActivity;Lcom/parrot/freeflight/piloting/model/WifiCountry;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/start/CountryChoiceActivity$1;->this$0:Lcom/parrot/freeflight/start/CountryChoiceActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/start/CountryChoiceActivity$1;->val$adapter:Lcom/parrot/freeflight/start/CountryChoiceActivity$CountryAdapter;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/start/CountryChoiceActivity$CountryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/model/WifiCountry;

    invoke-static {v2, v1}, Lcom/parrot/freeflight/start/CountryChoiceActivity;->access$000(Lcom/parrot/freeflight/start/CountryChoiceActivity;Lcom/parrot/freeflight/piloting/model/WifiCountry;)V

    goto :goto_0
.end method
