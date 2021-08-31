.class Lcom/example/sys/sircilla/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/sys/sircilla/MainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/sys/sircilla/MainActivity;

.field final synthetic val$sw:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/example/sys/sircilla/MainActivity;Landroid/widget/Switch;)V
    .registers 3
    .param p1, "this$0"    # Lcom/example/sys/sircilla/MainActivity;

    .line 89
    iput-object p1, p0, Lcom/example/sys/sircilla/MainActivity$2;->this$0:Lcom/example/sys/sircilla/MainActivity;

    iput-object p2, p0, Lcom/example/sys/sircilla/MainActivity$2;->val$sw:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 92
    if-eqz p2, :cond_14

    .line 94
    iget-object v0, p0, Lcom/example/sys/sircilla/MainActivity$2;->this$0:Lcom/example/sys/sircilla/MainActivity;

    invoke-virtual {v0}, Lcom/example/sys/sircilla/MainActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDelegate;->setLocalNightMode(I)V

    .line 95
    iget-object v0, p0, Lcom/example/sys/sircilla/MainActivity$2;->val$sw:Landroid/widget/Switch;

    const-string v1, "DayMode"

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    goto :goto_25

    .line 99
    :cond_14
    iget-object v0, p0, Lcom/example/sys/sircilla/MainActivity$2;->this$0:Lcom/example/sys/sircilla/MainActivity;

    invoke-virtual {v0}, Lcom/example/sys/sircilla/MainActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDelegate;->setLocalNightMode(I)V

    .line 100
    iget-object v0, p0, Lcom/example/sys/sircilla/MainActivity$2;->val$sw:Landroid/widget/Switch;

    const-string v1, "NightMode"

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_25
    return-void
.end method
