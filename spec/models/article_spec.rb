require 'rails_helper'

RSpec.describe Article, type: :model do
  it { should respond_to(:title)        }
  it { should respond_to(:slug)         }
  it { should respond_to(:body)         }
  it { should respond_to(:published)    }
  it { should respond_to(:published_on) }
end
