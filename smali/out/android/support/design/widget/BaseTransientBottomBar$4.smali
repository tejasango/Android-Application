.class Landroid/support/design/widget/BaseTransientBottomBar$4;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/support/design/widget/SnackbarManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/widget/BaseTransientBottomBar;

    .line 450
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$4;, "Landroid/support/design/widget/BaseTransientBottomBar$4;"
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$4;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(I)V
    .registers 7
    .param p1, "event"    # I

    .line 458
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$4;, "Landroid/support/design/widget/BaseTransientBottomBar$4;"
    sget-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    sget-object v1, Landroid/support/design/widget/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar$4;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    .line 459
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 458
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 460
    return-void
.end method

.method public show()V
    .registers 5

    .line 453
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$4;, "Landroid/support/design/widget/BaseTransientBottomBar$4;"
    sget-object v0, Landroid/support/design/widget/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    sget-object v1, Landroid/support/design/widget/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/BaseTransientBottomBar$4;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 454
    return-void
.end method