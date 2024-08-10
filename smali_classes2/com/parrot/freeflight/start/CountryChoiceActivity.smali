.class public Lcom/parrot/freeflight/start/CountryChoiceActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CountryChoiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/start/CountryChoiceActivity$CountryAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CountryChoiceActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/start/CountryChoiceActivity;Lcom/parrot/freeflight/piloting/model/WifiCountry;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/start/CountryChoiceActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/piloting/model/WifiCountry;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/start/CountryChoiceActivity;->onCountrySelected(Lcom/parrot/freeflight/piloting/model/WifiCountry;)V

    return-void
.end method

.method private onCountrySelected(Lcom/parrot/freeflight/piloting/model/WifiCountry;)V
    .locals 5
    .param p1, "wifiCountry"    # Lcom/parrot/freeflight/piloting/model/WifiCountry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    const-string v2, "CountryChoiceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCountrySelected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/ModelStore;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    .line 86
    .local v1, "model":Lcom/parrot/freeflight/core/model/Model;
    instance-of v2, v1, Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 87
    check-cast v0, Lcom/parrot/freeflight/core/model/DroneModel;

    .line 88
    .local v0, "droneModel":Lcom/parrot/freeflight/core/model/DroneModel;
    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DroneModel;->setWifiCountry(Lcom/parrot/freeflight/piloting/model/WifiCountry;)V

    .line 90
    .end local v0    # "droneModel":Lcom/parrot/freeflight/core/model/DroneModel;
    :cond_0
    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->isResumed(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/start/CountryChoiceActivity;->supportFinishAfterTransition()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/parrot/freeflight/piloting/model/WifiCountry;->WIFI_COUNTRY_US:Lcom/parrot/freeflight/piloting/model/WifiCountry;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/start/CountryChoiceActivity;->onCountrySelected(Lcom/parrot/freeflight/piloting/model/WifiCountry;)V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 35
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v6, 0x7f0c0024

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/start/CountryChoiceActivity;->setContentView(I)V

    .line 38
    const v6, 0x7f0a02e8

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/start/CountryChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 39
    .local v2, "countryListView":Landroid/widget/ListView;
    new-instance v4, Ljava/util/ArrayList;

    const-class v6, Lcom/parrot/freeflight/piloting/model/WifiCountry;

    invoke-static {v6}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/piloting/model/WifiCountry;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 41
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 43
    new-instance v0, Lcom/parrot/freeflight/start/CountryChoiceActivity$CountryAdapter;

    invoke-direct {v0, p0, v4}, Lcom/parrot/freeflight/start/CountryChoiceActivity$CountryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 44
    .local v0, "adapter":Lcom/parrot/freeflight/start/CountryChoiceActivity$CountryAdapter;
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 46
    sget-object v6, Lcom/parrot/freeflight/piloting/model/WifiCountry;->WIFI_COUNTRY_US:Lcom/parrot/freeflight/piloting/model/WifiCountry;

    invoke-interface {v4, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 47
    .local v3, "defaultPosition":I
    invoke-virtual {v2, v3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 48
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 50
    const v6, 0x7f0a00a1

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/start/CountryChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 51
    .local v5, "okBtn":Landroid/widget/Button;
    if-eqz v5, :cond_0

    .line 52
    new-instance v6, Lcom/parrot/freeflight/start/CountryChoiceActivity$1;

    invoke-direct {v6, p0, v2, v0}, Lcom/parrot/freeflight/start/CountryChoiceActivity$1;-><init>(Lcom/parrot/freeflight/start/CountryChoiceActivity;Landroid/widget/ListView;Lcom/parrot/freeflight/start/CountryChoiceActivity$CountryAdapter;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v6, 0x7f0500a3

    invoke-static {p0, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColor(Landroid/view/View;I)V

    .line 65
    :cond_0
    const v6, 0x7f0a043d

    invoke-virtual {p0, v6}, Lcom/parrot/freeflight/start/CountryChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 66
    .local v1, "cancelText":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 67
    new-instance v6, Lcom/parrot/freeflight/start/CountryChoiceActivity$2;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/start/CountryChoiceActivity$2;-><init>(Lcom/parrot/freeflight/start/CountryChoiceActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/start/CountryChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1020002

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/start/CountryChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 76
    return-void
.end method
